**free

ctl-opt dftactgrp(*no);

dcl-pi P739;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P658.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P739';
dsply theCharVar;
callp localProc();
P658();
P157();
P314();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P739 in the procedure';
end-proc;