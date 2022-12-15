**free

ctl-opt dftactgrp(*no);

dcl-pi P2461;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'
/copy 'qrpgleref/P621.rpgleinc'

dcl-ds T670 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T670 FROM T670 LIMIT 1;

theCharVar = 'Hello from P2461';
dsply theCharVar;
P290();
P2385();
P621();
return;