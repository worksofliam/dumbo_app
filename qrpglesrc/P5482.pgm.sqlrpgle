**free

ctl-opt dftactgrp(*no);

dcl-pi P5482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3003.rpgleinc'
/copy 'qrpgleref/P3582.rpgleinc'
/copy 'qrpgleref/P261.rpgleinc'

dcl-ds theTable extname('T609') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T609 LIMIT 1;

theCharVar = 'Hello from P5482';
dsply theCharVar;
P3003();
P3582();
P261();
return;