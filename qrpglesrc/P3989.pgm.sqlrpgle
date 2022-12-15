**free

ctl-opt dftactgrp(*no);

dcl-pi P3989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3033.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P551.rpgleinc'

dcl-ds T1458 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1458 FROM T1458 LIMIT 1;

theCharVar = 'Hello from P3989';
dsply theCharVar;
P3033();
P16();
P551();
return;