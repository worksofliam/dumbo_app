**free

ctl-opt dftactgrp(*no);

dcl-pi P3103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P891.rpgleinc'
/copy 'qrpgleref/P560.rpgleinc'
/copy 'qrpgleref/P2334.rpgleinc'

dcl-ds T631 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T631 FROM T631 LIMIT 1;

theCharVar = 'Hello from P3103';
dsply theCharVar;
callp localProc();
P891();
P560();
P2334();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3103 in the procedure';
end-proc;