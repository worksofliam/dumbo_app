**free

ctl-opt dftactgrp(*no);

dcl-pi P592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'

dcl-ds T241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T241 FROM T241 LIMIT 1;

theCharVar = 'Hello from P592';
dsply theCharVar;
P59();
P311();
P259();
return;