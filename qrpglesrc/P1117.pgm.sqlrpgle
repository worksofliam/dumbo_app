**free

ctl-opt dftactgrp(*no);

dcl-pi P1117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P645.rpgleinc'

dcl-ds T81 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T81 FROM T81 LIMIT 1;

theCharVar = 'Hello from P1117';
dsply theCharVar;
callp localProc();
P434();
P891();
P645();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1117 in the procedure';
end-proc;