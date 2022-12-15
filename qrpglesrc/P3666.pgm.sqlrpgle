**free

ctl-opt dftactgrp(*no);

dcl-pi P3666;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2629.rpgleinc'
/copy 'qrpgleref/P2763.rpgleinc'
/copy 'qrpgleref/P3658.rpgleinc'

dcl-ds T926 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T926 FROM T926 LIMIT 1;

theCharVar = 'Hello from P3666';
dsply theCharVar;
P2629();
P2763();
P3658();
return;