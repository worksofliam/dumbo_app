**free

ctl-opt dftactgrp(*no);

dcl-pi P4393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2228.rpgleinc'
/copy 'qrpgleref/P2957.rpgleinc'
/copy 'qrpgleref/P2741.rpgleinc'

dcl-ds T651 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T651 FROM T651 LIMIT 1;

theCharVar = 'Hello from P4393';
dsply theCharVar;
P2228();
P2957();
P2741();
return;