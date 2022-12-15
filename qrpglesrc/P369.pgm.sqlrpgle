**free

ctl-opt dftactgrp(*no);

dcl-pi P369;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds T141 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T141 FROM T141 LIMIT 1;

theCharVar = 'Hello from P369';
dsply theCharVar;
P234();
P129();
P15();
return;