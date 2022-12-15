**free

ctl-opt dftactgrp(*no);

dcl-pi P5139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P952.rpgleinc'
/copy 'qrpgleref/P3876.rpgleinc'

dcl-ds T656 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T656 FROM T656 LIMIT 1;

theCharVar = 'Hello from P5139';
dsply theCharVar;
P41();
P952();
P3876();
return;