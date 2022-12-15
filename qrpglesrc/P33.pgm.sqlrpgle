**free

ctl-opt dftactgrp(*no);

dcl-pi P33;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P11.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T67') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T67 LIMIT 1;

theCharVar = 'Hello from P33';
dsply theCharVar;
P15();
P11();
P29();
return;