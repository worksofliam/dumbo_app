**free

ctl-opt dftactgrp(*no);

dcl-pi P2139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1684.rpgleinc'
/copy 'qrpgleref/P1333.rpgleinc'
/copy 'qrpgleref/P1735.rpgleinc'

dcl-ds T745 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T745 FROM T745 LIMIT 1;

theCharVar = 'Hello from P2139';
dsply theCharVar;
P1684();
P1333();
P1735();
return;