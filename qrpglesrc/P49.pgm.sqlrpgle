**free

ctl-opt dftactgrp(*no);

dcl-pi P49;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P47.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds T664 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T664 FROM T664 LIMIT 1;

theCharVar = 'Hello from P49';
dsply theCharVar;
P47();
P8();
P24();
return;