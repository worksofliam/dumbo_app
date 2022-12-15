**free

ctl-opt dftactgrp(*no);

dcl-pi P489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'

dcl-ds T21 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T21 FROM T21 LIMIT 1;

theCharVar = 'Hello from P489';
dsply theCharVar;
P294();
P375();
P5();
return;