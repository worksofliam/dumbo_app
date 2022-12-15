**free

ctl-opt dftactgrp(*no);

dcl-pi P2318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1976.rpgleinc'
/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds T478 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T478 FROM T478 LIMIT 1;

theCharVar = 'Hello from P2318';
dsply theCharVar;
P1976();
P701();
P392();
return;