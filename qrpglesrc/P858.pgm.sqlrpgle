**free

ctl-opt dftactgrp(*no);

dcl-pi P858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P642.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds theTable extname('T309') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T309 LIMIT 1;

theCharVar = 'Hello from P858';
dsply theCharVar;
P642();
P181();
P296();
return;