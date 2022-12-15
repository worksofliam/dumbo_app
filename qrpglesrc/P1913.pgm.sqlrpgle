**free

ctl-opt dftactgrp(*no);

dcl-pi P1913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1394.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds T159 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T159 FROM T159 LIMIT 1;

theCharVar = 'Hello from P1913';
dsply theCharVar;
P1394();
P635();
P399();
return;