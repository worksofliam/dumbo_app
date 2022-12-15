**free

ctl-opt dftactgrp(*no);

dcl-pi P1413;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P843.rpgleinc'
/copy 'qrpgleref/P67.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'

dcl-ds T1342 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1342 FROM T1342 LIMIT 1;

theCharVar = 'Hello from P1413';
dsply theCharVar;
P843();
P67();
P325();
return;