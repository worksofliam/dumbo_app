**free

ctl-opt dftactgrp(*no);

dcl-pi P846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P106.rpgleinc'

dcl-ds theTable extname('T68') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T68 LIMIT 1;

theCharVar = 'Hello from P846';
dsply theCharVar;
P691();
P223();
P106();
return;