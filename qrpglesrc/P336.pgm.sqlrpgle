**free

ctl-opt dftactgrp(*no);

dcl-pi P336;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P301.rpgleinc'
/copy 'qrpgleref/P284.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'

dcl-ds theTable extname('T155') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T155 LIMIT 1;

theCharVar = 'Hello from P336';
dsply theCharVar;
P301();
P284();
P170();
return;