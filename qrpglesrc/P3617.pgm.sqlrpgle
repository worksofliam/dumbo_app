**free

ctl-opt dftactgrp(*no);

dcl-pi P3617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1842.rpgleinc'
/copy 'qrpgleref/P1714.rpgleinc'
/copy 'qrpgleref/P2163.rpgleinc'

dcl-ds T30 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T30 FROM T30 LIMIT 1;

theCharVar = 'Hello from P3617';
dsply theCharVar;
P1842();
P1714();
P2163();
return;