**free

ctl-opt dftactgrp(*no);

dcl-pi P4684;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P3829.rpgleinc'
/copy 'qrpgleref/P4287.rpgleinc'

dcl-ds theTable extname('T1333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1333 LIMIT 1;

theCharVar = 'Hello from P4684';
dsply theCharVar;
P271();
P3829();
P4287();
return;