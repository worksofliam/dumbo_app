**free

ctl-opt dftactgrp(*no);

dcl-pi P716;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P231.rpgleinc'
/copy 'qrpgleref/P283.rpgleinc'

dcl-ds T641 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T641 FROM T641 LIMIT 1;

theCharVar = 'Hello from P716';
dsply theCharVar;
P473();
P231();
P283();
return;