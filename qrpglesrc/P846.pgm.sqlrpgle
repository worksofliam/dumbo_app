**free

ctl-opt dftactgrp(*no);

dcl-pi P846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'

dcl-ds theTable extname('T636') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T636 LIMIT 1;

theCharVar = 'Hello from P846';
dsply theCharVar;
P749();
P229();
P771();
return;