**free

ctl-opt dftactgrp(*no);

dcl-pi P671;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'

dcl-ds theTable extname('T352') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T352 LIMIT 1;

theCharVar = 'Hello from P671';
dsply theCharVar;
callp localProc();
P325();
P642();
P421();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P671 in the procedure';
end-proc;