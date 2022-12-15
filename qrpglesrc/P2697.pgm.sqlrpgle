**free

ctl-opt dftactgrp(*no);

dcl-pi P2697;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P167.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'
/copy 'qrpgleref/P2261.rpgleinc'

dcl-ds T817 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T817 FROM T817 LIMIT 1;

theCharVar = 'Hello from P2697';
dsply theCharVar;
P167();
P1106();
P2261();
return;