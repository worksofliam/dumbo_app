**free

ctl-opt dftactgrp(*no);

dcl-pi P721;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds T81 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T81 FROM T81 LIMIT 1;

theCharVar = 'Hello from P721';
dsply theCharVar;
callp localProc();
P436();
P661();
P126();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P721 in the procedure';
end-proc;