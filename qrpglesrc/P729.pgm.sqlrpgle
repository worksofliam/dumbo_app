**free

ctl-opt dftactgrp(*no);

dcl-pi P729;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T1006') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1006 LIMIT 1;

theCharVar = 'Hello from P729';
dsply theCharVar;
P121();
P46();
P235();
return;