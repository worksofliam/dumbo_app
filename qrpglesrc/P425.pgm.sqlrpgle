**free

ctl-opt dftactgrp(*no);

dcl-pi P425;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P361.rpgleinc'
/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T274') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T274 LIMIT 1;

theCharVar = 'Hello from P425';
dsply theCharVar;
P361();
P271();
P405();
return;