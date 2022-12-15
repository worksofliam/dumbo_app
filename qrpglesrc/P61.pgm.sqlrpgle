**free

ctl-opt dftactgrp(*no);

dcl-pi P61;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P61';
dsply theCharVar;
callp localProc();
P42();
P29();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P61 in the procedure';
end-proc;