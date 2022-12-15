**free

ctl-opt dftactgrp(*no);

dcl-pi P3026;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2339.rpgleinc'
/copy 'qrpgleref/P1985.rpgleinc'
/copy 'qrpgleref/P2676.rpgleinc'

dcl-ds T277 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T277 FROM T277 LIMIT 1;

theCharVar = 'Hello from P3026';
dsply theCharVar;
P2339();
P1985();
P2676();
return;