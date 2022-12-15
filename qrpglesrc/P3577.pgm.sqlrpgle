**free

ctl-opt dftactgrp(*no);

dcl-pi P3577;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2508.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P2719.rpgleinc'

dcl-ds T718 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T718 FROM T718 LIMIT 1;

theCharVar = 'Hello from P3577';
dsply theCharVar;
P2508();
P108();
P2719();
return;