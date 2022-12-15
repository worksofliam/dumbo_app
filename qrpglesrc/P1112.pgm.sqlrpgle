**free

ctl-opt dftactgrp(*no);

dcl-pi P1112;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P721.rpgleinc'
/copy 'qrpgleref/P494.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds T171 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T171 FROM T171 LIMIT 1;

theCharVar = 'Hello from P1112';
dsply theCharVar;
P721();
P494();
P61();
return;