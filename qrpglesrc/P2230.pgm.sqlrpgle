**free

ctl-opt dftactgrp(*no);

dcl-pi P2230;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1556.rpgleinc'
/copy 'qrpgleref/P1742.rpgleinc'
/copy 'qrpgleref/P1673.rpgleinc'

dcl-ds T348 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T348 FROM T348 LIMIT 1;

theCharVar = 'Hello from P2230';
dsply theCharVar;
P1556();
P1742();
P1673();
return;