**free

ctl-opt dftactgrp(*no);

dcl-pi P913;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'
/copy 'qrpgleref/P654.rpgleinc'

dcl-ds T272 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T272 FROM T272 LIMIT 1;

theCharVar = 'Hello from P913';
dsply theCharVar;
P159();
P597();
P654();
return;