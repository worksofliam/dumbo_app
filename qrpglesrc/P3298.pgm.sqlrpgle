**free

ctl-opt dftactgrp(*no);

dcl-pi P3298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1610.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P1992.rpgleinc'

dcl-ds T1143 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1143 FROM T1143 LIMIT 1;

theCharVar = 'Hello from P3298';
dsply theCharVar;
P1610();
P294();
P1992();
return;