**free

ctl-opt dftactgrp(*no);

dcl-pi P1397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P1358.rpgleinc'

dcl-ds T958 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T958 FROM T958 LIMIT 1;

theCharVar = 'Hello from P1397';
dsply theCharVar;
P790();
P480();
P1358();
return;