**free

ctl-opt dftactgrp(*no);

dcl-pi P888;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P350.rpgleinc'
/copy 'qrpgleref/P198.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'

dcl-ds T1450 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1450 FROM T1450 LIMIT 1;

theCharVar = 'Hello from P888';
dsply theCharVar;
P350();
P198();
P246();
return;