**free

ctl-opt dftactgrp(*no);

dcl-pi P3235;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3196.rpgleinc'
/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'

dcl-ds T1000 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1000 FROM T1000 LIMIT 1;

theCharVar = 'Hello from P3235';
dsply theCharVar;
P3196();
P952();
P768();
return;