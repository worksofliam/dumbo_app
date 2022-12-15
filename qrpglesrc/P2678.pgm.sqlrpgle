**free

ctl-opt dftactgrp(*no);

dcl-pi P2678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2117.rpgleinc'
/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P2112.rpgleinc'

dcl-ds T883 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T883 FROM T883 LIMIT 1;

theCharVar = 'Hello from P2678';
dsply theCharVar;
P2117();
P1466();
P2112();
return;