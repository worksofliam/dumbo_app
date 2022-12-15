**free

ctl-opt dftactgrp(*no);

dcl-pi P2700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P1109.rpgleinc'
/copy 'qrpgleref/P901.rpgleinc'

dcl-ds T1404 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1404 FROM T1404 LIMIT 1;

theCharVar = 'Hello from P2700';
dsply theCharVar;
P355();
P1109();
P901();
return;