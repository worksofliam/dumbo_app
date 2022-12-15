**free

ctl-opt dftactgrp(*no);

dcl-pi P292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds T56 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T56 FROM T56 LIMIT 1;

theCharVar = 'Hello from P292';
dsply theCharVar;
P101();
P234();
P16();
return;