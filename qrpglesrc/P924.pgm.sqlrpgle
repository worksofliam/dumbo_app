**free

ctl-opt dftactgrp(*no);

dcl-pi P924;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P577.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P869.rpgleinc'

dcl-ds theTable extname('T227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T227 LIMIT 1;

theCharVar = 'Hello from P924';
dsply theCharVar;
callp localProc();
P577();
P294();
P869();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P924 in the procedure';
end-proc;