**free

ctl-opt dftactgrp(*no);

dcl-pi P1421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P1109.rpgleinc'

dcl-ds T86 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T86 FROM T86 LIMIT 1;

theCharVar = 'Hello from P1421';
dsply theCharVar;
P315();
P924();
P1109();
return;