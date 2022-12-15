**free

ctl-opt dftactgrp(*no);

dcl-pi P1045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P820.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P777.rpgleinc'

dcl-ds T745 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T745 FROM T745 LIMIT 1;

theCharVar = 'Hello from P1045';
dsply theCharVar;
P820();
P657();
P777();
return;