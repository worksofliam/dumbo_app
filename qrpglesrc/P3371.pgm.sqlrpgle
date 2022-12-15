**free

ctl-opt dftactgrp(*no);

dcl-pi P3371;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2588.rpgleinc'
/copy 'qrpgleref/P2063.rpgleinc'
/copy 'qrpgleref/P2602.rpgleinc'

dcl-ds T1145 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1145 FROM T1145 LIMIT 1;

theCharVar = 'Hello from P3371';
dsply theCharVar;
callp localProc();
P2588();
P2063();
P2602();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3371 in the procedure';
end-proc;