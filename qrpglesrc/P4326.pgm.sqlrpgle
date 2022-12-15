**free

ctl-opt dftactgrp(*no);

dcl-pi P4326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P3192.rpgleinc'
/copy 'qrpgleref/P3385.rpgleinc'

dcl-ds T401 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T401 FROM T401 LIMIT 1;

theCharVar = 'Hello from P4326';
dsply theCharVar;
callp localProc();
P16();
P3192();
P3385();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4326 in the procedure';
end-proc;