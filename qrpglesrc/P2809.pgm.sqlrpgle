**free

ctl-opt dftactgrp(*no);

dcl-pi P2809;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1251.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P2352.rpgleinc'

dcl-ds T169 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T169 FROM T169 LIMIT 1;

theCharVar = 'Hello from P2809';
dsply theCharVar;
P1251();
P864();
P2352();
return;