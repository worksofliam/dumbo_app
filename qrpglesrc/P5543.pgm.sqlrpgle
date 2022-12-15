**free

ctl-opt dftactgrp(*no);

dcl-pi P5543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4909.rpgleinc'
/copy 'qrpgleref/P2905.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'

dcl-ds theTable extname('T765') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T765 LIMIT 1;

theCharVar = 'Hello from P5543';
dsply theCharVar;
P4909();
P2905();
P2054();
return;