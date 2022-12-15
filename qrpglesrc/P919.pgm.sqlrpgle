**free

ctl-opt dftactgrp(*no);

dcl-pi P919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P751.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'
/copy 'qrpgleref/P745.rpgleinc'

dcl-ds theTable extname('T114') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T114 LIMIT 1;

theCharVar = 'Hello from P919';
dsply theCharVar;
P751();
P715();
P745();
return;