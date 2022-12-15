**free

ctl-opt dftactgrp(*no);

dcl-pi P570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P199.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'

dcl-ds T379 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T379 FROM T379 LIMIT 1;

theCharVar = 'Hello from P570';
dsply theCharVar;
P199();
P42();
P524();
return;