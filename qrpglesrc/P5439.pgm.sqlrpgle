**free

ctl-opt dftactgrp(*no);

dcl-pi P5439;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5176.rpgleinc'
/copy 'qrpgleref/P4928.rpgleinc'
/copy 'qrpgleref/P2474.rpgleinc'

dcl-ds T949 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T949 FROM T949 LIMIT 1;

theCharVar = 'Hello from P5439';
dsply theCharVar;
callp localProc();
P5176();
P4928();
P2474();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5439 in the procedure';
end-proc;