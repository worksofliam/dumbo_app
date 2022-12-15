**free

ctl-opt dftactgrp(*no);

dcl-pi P2132;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1304.rpgleinc'
/copy 'qrpgleref/P660.rpgleinc'
/copy 'qrpgleref/P1843.rpgleinc'

dcl-ds T25 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T25 FROM T25 LIMIT 1;

theCharVar = 'Hello from P2132';
dsply theCharVar;
P1304();
P660();
P1843();
return;