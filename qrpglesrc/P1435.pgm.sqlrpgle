**free

ctl-opt dftactgrp(*no);

dcl-pi P1435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1095.rpgleinc'
/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'

dcl-ds T638 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T638 FROM T638 LIMIT 1;

theCharVar = 'Hello from P1435';
dsply theCharVar;
P1095();
P350();
P431();
return;