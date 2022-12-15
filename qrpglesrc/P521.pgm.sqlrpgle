**free

ctl-opt dftactgrp(*no);

dcl-pi P521;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P369.rpgleinc'
/copy 'qrpgleref/P144.rpgleinc'

dcl-ds theTable extname('T925') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T925 LIMIT 1;

theCharVar = 'Hello from P521';
dsply theCharVar;
callp localProc();
P218();
P369();
P144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P521 in the procedure';
end-proc;