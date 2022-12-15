**free

ctl-opt dftactgrp(*no);

dcl-pi P5323;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3337.rpgleinc'
/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P2456.rpgleinc'

dcl-ds T43 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T43 FROM T43 LIMIT 1;

theCharVar = 'Hello from P5323';
dsply theCharVar;
P3337();
P762();
P2456();
return;