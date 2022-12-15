**free

ctl-opt dftactgrp(*no);

dcl-pi P962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P961.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds T606 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T606 FROM T606 LIMIT 1;

theCharVar = 'Hello from P962';
dsply theCharVar;
P211();
P961();
P699();
return;