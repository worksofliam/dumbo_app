**free

ctl-opt dftactgrp(*no);

dcl-pi P1379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P1049.rpgleinc'
/copy 'qrpgleref/P1065.rpgleinc'

dcl-ds T1360 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1360 FROM T1360 LIMIT 1;

theCharVar = 'Hello from P1379';
dsply theCharVar;
P494();
P1049();
P1065();
return;