**free

ctl-opt dftactgrp(*no);

dcl-pi P2727;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P962.rpgleinc'
/copy 'qrpgleref/P2615.rpgleinc'
/copy 'qrpgleref/P66.rpgleinc'

dcl-ds T923 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T923 FROM T923 LIMIT 1;

theCharVar = 'Hello from P2727';
dsply theCharVar;
P962();
P2615();
P66();
return;