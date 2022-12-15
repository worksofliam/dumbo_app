**free

ctl-opt dftactgrp(*no);

dcl-pi P5326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5097.rpgleinc'
/copy 'qrpgleref/P4659.rpgleinc'
/copy 'qrpgleref/P692.rpgleinc'

dcl-ds T815 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T815 FROM T815 LIMIT 1;

theCharVar = 'Hello from P5326';
dsply theCharVar;
callp localProc();
P5097();
P4659();
P692();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5326 in the procedure';
end-proc;